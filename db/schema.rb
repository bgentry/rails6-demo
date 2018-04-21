Sequel.migration do
  change do
    create_table(:posts) do
      primary_key :id
      column :title, "text", :null=>false
      column :content, "text", :null=>false
    end
    
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
  end
end
Sequel.migration do
  change do
    self << "SET search_path TO \"$user\", public"
    self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20180421184931_create_posts.rb')"
  end
end
