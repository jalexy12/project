var BootcampBox = React.createClass({
  loadBootcampsFromServer: function() {
    $.ajax({
      url: this.props.url,
      dataType: 'json',
      success: function(data) {
        this.setState({data: data});
      }.bind(this),
      error: function(xhr, status, err) {
        console.error(this.props.url, status, err.toString());
      }.bind(this)
    });
  },
  componentDidMount: function() {
    this.loadBootcampsFromServer();
    setInterval(this.loadBootcampsFromServer, this.props.pollInterval);
  },
  getInitialState: function() {
    return {data: []};
  },
  render: function() {
     console.log(this.state)
    return (
      <div className="Bootcamps">
        <div className="bootcampsdata">
          <div className="headingrow text-center">
            <h2 className="heading">Bootcamps</h2>
          </div>
          <div className="bootcampdata row text-center">
            <BootcampList data={this.state.data} />
          </div>
          </div>
      </div>
    );
  }
});
var Bootcamp = React.createClass({
  render: function() {
    return (
      <div className="bootcamp col-sm-4">
        <h2 className="bootcampName">
          {this.props.name}
        </h2>
        {this.props.description}
        <br />
        <img className="cityIMG" src={this.props.image} />
      </div>
    );
  }
});

var BootcampList = React.createClass({
  render: function() {
    var bootcampNodes = this.props.data.map(function(bootcamp, index) {
      return (
        // `key` is a React-specific concept and is not mandatory for the
        // purpose of this tutorial. if you're curious, see more here:
        // http://facebook.github.io/react/docs/multiple-components.html#dynamic-children
        <Bootcamp name={bootcamp.name} description={bootcamp.description} image={"/assets" + bootcamp.bootcampimgs[0].url} key={index}>
      
        </Bootcamp>
      );
    });
    return (
      <div>
        {bootcampNodes}
      </div>
    );
  }
});
