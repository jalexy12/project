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
        <h1>Bootcamps</h1>
        <BootcampList data={this.state.data} />
      </div>
    );
  }
});
var Bootcamp = React.createClass({
  render: function() {
    return (
      <div className="bootcamp">
        <h2 className="bootcampName">
          {this.props.name}
        </h2>
        <h5>{this.props.description}</h5>
        {this.props.cities}
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
        <Bootcamp name={bootcamp.name} description={bootcamp.description} cities={bootcamp.cities} key={index}>
          
        </Bootcamp>
      );
    });
    return (
      <div className="BootcampList col-sm-4">
        {bootcampNodes}
      </div>
    );
  }
});
