class ProductShopsController < ApplicationController
  def index
    @product_shops = ProductShop.filter_by(filter_params)
    @fields_for_select = Services::Report.fields_for_select
    @all_fields = all_fields

    respond_to do |format|
      format.html
      format.xlsx do
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename='report.xlsx'"
      end

      format.xls do
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename='report.xls'"
      end
    end
  end

  private

  def filter_params
    params.slice(:shop_id).to_h
  end

  def all_fields
    %w[vendor_code name amount].concat(params[:columns].to_a).compact.uniq
  end
end
