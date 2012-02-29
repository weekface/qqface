# coding: utf-8
module Qqface
  module Helper

#    def qqface_js_tag
#      javascript_include_tag 'jquery.qqFace'
#    end
#
#    def qqface_css_tag
#      stylesheet_link_tag 'qqface'
#    end

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
          path:'/images/faces/'	//表情存放的路径
        });
      });
    </script>
JS
      html.join('\n').html_safe
    end
    
    #    def social_share_button_tag(title = "", opts = {})
    #      rel = opts[:rel]
    #      html = []
    #      html << "<div class='social-share-button' data-title='#{title}'>"
    #
    #      SocialShareButton.config.allow_sites.each do |name|
    #        link_title = [t("social_share_button.share_to"),t("social_share_button.#{name.downcase}")].join("")
    #        html << link_to("","#", :rel => "nofollow #{rel}",
    #          "data-site" => name,
    #          :class => "social-share-button-#{name}",
    #          :onclick => "return SocialShareButton.share($(this).data('site'), $(this).parent().data('title'));",
    #          :title => h(link_title))
    #      end
    #      html << "</div>"
    #      raw html.join("\n")
    #    end
  end
end