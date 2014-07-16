#Combine two hashes and check whether a parameter exist and add if the parameter is not present
params 	= {:phone=>"8714269337",:firstname=> "Roy"};
options = {:lastname =>"M J",:age=>"25"}; 
def process_hash(params,options) 
    params.fetch(:username, params[:username]= "Admin");    
    params = options.merge(params);
    puts params;
end 
process_hash(params, options);