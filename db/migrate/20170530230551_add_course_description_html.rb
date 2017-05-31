class AddCourseDescriptionHtml < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :description, :text
    add_column :events, :course_description, :text
    add_column :events, :course_gallery, :text
    add_column :events, :course_description_2, :text
  end
end
