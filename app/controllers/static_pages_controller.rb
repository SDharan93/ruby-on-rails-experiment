# Controller for static pages. This controller does not have much logic
# as it only renders the static pages.
class StaticPagesController < ApplicationController
  def home(); end

  def help(); end

  def about(); end

  def contact(); end
end
