# Generated via
#  `rails generate hyrax:work HerbariumImage`
module Hyrax
  class HerbariumImagePresenter < Hyrax::WorkShowPresenter

    # Imago custom fields go here
    delegate :collection_code, :catalog_number, :other_catalog_numbers, :continent, :country, :state_province, :county,
             :higher_geography, :locality, :decimal_latitude, :decimal_longitude, :scientific_name, :scientific_name_authorship,
             :kingdom, :phylum, :dwcclass, :order, :family, :genus, :specific_epithet,
             :infraspecific_epithet, :type_status, :basis_of_record, to: :solr_document

    # new for paleo
    delegate :bed, :dwcmember, :formation, :group, :latest_age_or_highest_stage, :earliest_age_or_lowest_stage, :latest_period_or_highest_system,
             :earliest_period_or_lowest_system, to: :solr_document

    #new for self-deposit
    delegate :institution_code, :occurrence_id, :country_code, :taxon_rank, :water_body, :location_remarks, :geodetic_datum, to: :solr_document

  end
end
