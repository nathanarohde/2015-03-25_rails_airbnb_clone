class AddIntialClassesCitiesPlacesUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :email, :string
      t.column :password_hash, :string
      t.column :password_salt, :string

      t.timestamps null: false
    end

    create_table :cities do |t|
      t.column :name, :string

      t.timestamps null: false
    end

    create_table :places do |t|
      t.column :name, :string
      t.column :price, :integer
      t.column :description, :text
      t.references :user
      t.references :city

      t.timestamps null: false
    end

    create_table :pictures do |t|
      t.column :name, :string
      t.references :imageable, polymorphic: true, index: true

      t.timestamps null: false
    end

  end
end
