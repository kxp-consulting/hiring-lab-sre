import { Card } from "react-bootstrap"


export default function Post(props) {

    const { post } = props

    return <Card className="my-2">

        <Card.Body>
            <Card.Subtitle className="mb-2 text-muted">{post.created_by} - {post.created_at}</Card.Subtitle>
            <Card.Text>{post.description}</Card.Text>            
        </Card.Body>
    </Card>
}