# Qqface tag

This is a gem to helper you quick add qqface function to your application.

This is a wrapper for the jquery.qqFace.js plugin, and add two action view helper method for use easy.

## Install

in your `Gemfile`:

    gem 'qqface'

an install it:

    $ bundle install

## Usage

you need add require css,js file in your app assets files:

`app/assets/javascripts/application.js`

    //= require jquery.qqFace

`app/assets/stylesheets/application.css`

    *= require qqface

then you can use `qqface_button_tag` helper in views, for example:

    <%= qqface_button_tag('post_content') %>

and display the qq face images:

    <%= simple_format(qqface_format(@post.content)) %>