var Card = React.createClass({

    render: function () {
        return (
            <span>
                <h2 className="text-center">{this.props.name}</h2>
                <p className="text-center">{this.props.description}</p>
                <img className="neighborhoodimg" src={this.props.image} alt=""/>
                <br />
                <button onClick={this.props.onClick}>More</button>
            </span>
        )
    }
})

var App = React.createClass({
	loadCitiesFromServer: function() {
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
  getInitialState: function() {
    return {data: []};

  },
  componentDidMount: function() {
    this.loadCitiesFromServer();
    setInterval(this.loadCitiesFromServer, this.props.pollInterval);
  },

	deleteCity: function (city) {
		var cities = this.state.data
	   	cities.image.splice(cities.image(city))
	    this.setState({cities: this.state.cities});
	},

    render: function () {
        var that = this;

        return (
            <div>
                {this.state.data.map(function (city) {
                    return (
                        <Card key={city.id} onClick={that.deleteCity.bind(null, city)} name={city.name} description={city.description} image={city.image}></Card>
                    )
                }, this)}
            </div>
        )
    }
});

$(function(){
	React.render(<App url="/neighborhoods.json" pollInterval={10000}></App>, document.getElementById('neighborhoods'));
})

