import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
    constructor() {
        super();
        this.state = {searchTerm: ""};
        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }       

    handleChange(e) {
        this.setState({searchTerm: e.currentTarget.value});
    }

    handleSubmit(e) {
        e.preventDefault();
        const search = this.state.searchTerm.split(" ").join("+");
        this.props.fetchSearchGiphys(search);
    }

    render() {
        let { giphys } = this.props;
        // debugger
        return (
          <div>
            <form>
              <input onChange={this.handleChange} type="text" />
              <button onClick={this.handleSubmit}>Submit</button>
            </form>
            <GiphysIndex giphys={giphys} />
          </div>
        );
    }
}

export default GiphysSearch