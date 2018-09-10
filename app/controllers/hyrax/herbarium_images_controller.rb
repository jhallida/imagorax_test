# Generated via
#  `rails generate hyrax:work HerbariumImage`
module Hyrax
  # Generated controller for HerbariumImage
  class HerbariumImagesController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::HerbariumImage

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::HerbariumImagePresenter
  end
end
