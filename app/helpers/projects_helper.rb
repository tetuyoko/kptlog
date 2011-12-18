module ProjectsHelper
  def join_tags(project)
    project.tags.map { |t| t.name }.join(", ")
  end
end
