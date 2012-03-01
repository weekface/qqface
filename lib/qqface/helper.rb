# coding: utf-8
module Qqface
  module Helper

    def qqface_format text
      text.gsub(/\[\/表情([0-9]*)\]/, '<img src="/assets/faces/\1.gif" width="24" height="24" border="0" />')
    end

    def qqface_button_tag(input_id)
      html = []
      html << '<div id="qqface" class="faceBtn">添加表情</div>'
      html << <<JS
      <script type="text/javascript">
      //实例化表情插件
      jQuery(function(){
        jQuery('#qqface').qqFace({
          id : "facebox", //表情盒子的ID
          assign:'#{input_id}', //给那个控件赋值
          path:'/assets/faces/'	//表情存放的路径
        });
      });
    </script>
JS
      html.join('').html_safe
    end
    
  end
end