class AddIntialClassesCitiesPlacesUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :email, :string
      t.column :password_hash, :string
      t.column :password_salt, :string

      t.timestamps
    end

    create_table :cities do |t|
      t.column :name, :string

      t.timestamps
    end

    create_table :places do |t|
      t.column :name, :string
      t.column :price, :integer
      t.column :description, :text
      t.reference :user
      t.reference :city
    end

  end
end
