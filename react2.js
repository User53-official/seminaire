import React from 'react';

class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            login: "",
            password: ""
        }
    }

    render() {
        return (
            <div id="form">
                <input type="text" 
                    value={this.state.login} 
                    onInput={this.changeLogin.bind(this)}>
                </input>
                <input type="password" 
                    value={this.state.password} 
                    onInput={this.changePassword.bind(this)}>
                </input>
            </div>
        );
    }
   
    changeLogin(event) { 
        this.setState({login: event.target.value }); 
    }
    
    changePassword(event) {
        this.setState({password: event.target.value });
    }
    
}

export default App