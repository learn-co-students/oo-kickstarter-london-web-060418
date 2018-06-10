class Backer

  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  #When a backer has added a project to its list of backed projects,
  #that project should also add the backer to its list of backers.

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end
