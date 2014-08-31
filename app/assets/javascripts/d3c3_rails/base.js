var d3c3_rails = {graphs: {}, actions: {}};

d3c3_rails.actions.generate = function(name, options){
  return d3c3_rails.graphs[name] = c3.generate(options);
}

d3c3_rails.actions.get = function(name){
  graph = d3c3_rails[name];
  if(graph){
    return graph;
  } else {
    throw new Error('Failed to located requested graph: ' + name);
  }
}