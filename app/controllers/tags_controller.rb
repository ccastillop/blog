# coding: utf-8
class TagsController < ApplicationController
  autocomplete_for :tag, :name
end
