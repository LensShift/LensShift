class CreateLensShifterProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :lens_shifter_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :ethnicity
      t.string :location
      t.float :latitude
      t.float :longitude
      t.string :sector
      t.text :referral
      t.text :comment
      t.boolean :contact_consent
      t.belongs_to :lens_shifter

      t.timestamps
    end
    add_index :lens_shifter_profiles, :last_name
  end
end
