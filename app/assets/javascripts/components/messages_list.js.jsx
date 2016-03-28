var CommentList = React.createClass({
	getInitialState() {
		let message = JSON.parse(this.props.message);
		return { message: message };
	},

	render() {
		let messages = this.state.messages.map((message)=>{
					return this.renderMessage(message);
			});

		return (
			<div>{messages}</div>
		);
	},

	renderMessage(message) {
		return (
			<article key={message.id}>
				<h3> by { message.user.name }</h3>
				<p>{ message.content }</p>
			</article>
		);
	}
});