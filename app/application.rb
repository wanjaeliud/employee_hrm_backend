class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    # root url
    if req.path == '/'
      return [
        200,
        { 'Content-Type' => 'application/json' },
        [{ message: "you're on the home page" }.to_json]
      ]

       # get all Company resources
    elsif req.path == '/companies' && req.get?
      return [
        200,
        { 'Content-Type' => 'application/json' },
        [Company.all.to_json ]
      ]

      # create a new resource
    elsif req.path == '/companies' && req.post?
      body = JSON.parse(req.body.read)
      company = Company.create(body)
      return [
        200,
        { 'Content-Type' => 'application/json' },
        [ company.to_json ]
      ]

       # get a resource by id
    elsif req.path.match(/companies/) && req.get?
      id = req.path.split('/')[2]
    
      company = Company.find_by_id(id)
    
      if company
        return [
          200,
          { 'Content-Type' => 'application/json' },
          [ company.to_json ]
        ]
      else
        return [
          204,
          { 'Content-Type' => 'application/json' },
          [ {}.to_json ]
        ]
      end

       # update a resource by id
    elsif req.path.match(/companies/) && req.patch?
      id = req.path.split('/')[2]
      company = Company.find_by_id(id)
      body = JSON.parse(req.body.read)
      
      company.update(body)

      return [
        200,
        { 'Content-Type' => 'application/json' },
        [ company.to_json ]
      ]

       # delete a resource by id
    elsif req.path.match(/companies/) && req.delete?
      id = req.path.split('/')[2]
      company = Company.find_by_id(id)

      company.destroy

      return [
        204,
        {},
        ['']
      ]

         ###########################

         #Job ROUTES

         # get all resources
    elsif req.path == '/jobs' && req.get?
      return [
        200,
        { 'Content-Type' => 'application/json' },
        [Job.all.to_json ]
      ]

       # create a new resource
    elsif req.path == '/jobs' && req.post?
      body = JSON.parse(req.body.read)
      job = Job.create(body)
      return [
        200,
        { 'Content-Type' => 'application/json' },
        [ job.to_json ]
      ]

       # get a resource by id
    elsif req.path.match(/jobs/) && req.get?
      id = req.path.split('/')[2]
      job = Job.find_by_id(id)

      if job
        return [
          200,
          { 'Content-Type' => 'application/json' },
          [ job.to_json ]
        ]
      else
        return [
          204,
          { 'Content-Type' => 'application/json' },
          [ {}.to_json ]
        ]
      end
   
     # update a resource by id
    elsif req.path.match(/jobs/) && req.patch?
      id = req.path.split('/')[2]
      job = Job.find_by_id(id)
      body = JSON.parse(req.body.read)
      
      job.update(body)

      return [
        200,
        { 'Content-Type' => 'application/json' },
        [ job.to_json ]
      ]

      # delete a resource by id
    elsif req.path.match(/jobs/) && req.delete?
      id = req.path.split('/')[2]
      job = Job.find_by_id(id)

      job.destroy

      return [
        204,
        {},
        ['']
      ]
    
      end

    if req.path.match(/test/) 
      return [200, 
      { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    else
       return [
        404,
        {},
        ['OOps!! Sorry Page not found']
      ]
    end

    res.finish
  end
end