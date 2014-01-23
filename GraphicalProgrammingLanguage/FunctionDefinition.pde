class FunctionDefinition
{
  //This are the inputs and outputs
  ArrayList<Input> inputs;
  ArrayList<Output> outputs;

  //These are everything
  ArrayList<GraphVertex> graph;

  Representation representation;

  FunctionDefinition()
  {
    this(JOptionPane.showInputDialog(null, "What would you like to call your new function?"), randomColor());
  }

  FunctionDefinition(String name, color c)
  {
    representation = new Circle();
    representation.name = name;
    representation.c = c;

    graph = new ArrayList<GraphVertex>();

    inputs = new ArrayList<Input>();
    outputs = new ArrayList<Output>();

    Input input = new Input();
    input.setLocation(new PVector(400, height/2));
    input.representation.c = color(0, 255, 0);
    inputs.add(input);
    graph.add(input);

    Output output = new Output();
    output.setLocation(new PVector(width - 300, height/2));
    output.representation.c = color(255, 0, 255);
    outputs.add(output);
    graph.add(output);
  }

  void show()
  {
    /*
    for (GraphVertex input : inputs)
      //Make an arrow from the left hand side of the screen to the input vertex:
      arrow(0, input.getLocation().y, input.getLocation().x - input.representation.radius, input.getLocation().y);

    for (GraphVertex output : outputs)
      //Make an arrow from the oudimensionsrtex to the right hand side of the screen:
      arrow(output.getLocation().x, output.getLocation().y, width, output.getLocation().y);
    */
    for (int i = 0; i < graph.size(); i++)
    {
      GraphVertex f = (GraphVertex)graph.get(i);

      f.show();

      //If you drag it to the trash can, kill it 
      if (f.getLocation().dist(trashLocation) < 100 && dragging != f)
        graph.remove(this);
    }
    
    text(representation.name, width/2, 20);
  }

  String execute(String input)
  {
    return "NYI";//inputs.get(0).execute(input);
  }

  void debug()
  {
    for (Input input : inputs)
      testStrings.add(new TestString("test", input));
  }
}