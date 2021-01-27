class Project
    attr_reader :title

    

    def initialize(title)
        @title = title
        @backed_project = []
    end


    def add_backer(backer)
        project_backer = ProjectBacker.new(self, backer)
        project_backer
    end

    def backers
        project_backers = ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end
        project_backers.map do |project_backer|
            project_backer.backer
        end
    end
end

