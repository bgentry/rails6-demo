Sequel.migration do
  change do
    create_table :posts do
      primary_key :id
      String :title, null: false
      String :content, null: false
    end
  end
end
