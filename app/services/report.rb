class Services::Report
  def fields_for_select
    (Product.column_names + Shop.column_names) - %w[id created_at updated_at vendor_code name amount]
  end
end
