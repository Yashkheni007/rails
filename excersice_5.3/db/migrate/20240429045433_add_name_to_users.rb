class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    validates :name, presence: true
    validates :optional_field, allow_nil: true

    before_validation :set_defaults
    private
    def set_defaults
      self.status ||= 'active'
    end

    validates :username, length: { minimum: 3, maximum: 20 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :age, numericality: { greater_than_or_equal_to: 18, message: "must be at least 18 years old" }
    validates :age, numericality: true
  end
end
