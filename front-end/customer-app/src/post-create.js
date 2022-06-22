import { useState } from "react";
import { Col, Container, Form, Row, Button } from "react-bootstrap";



export default function PostCreate(props) {

    const { handleSubmit } = props

    const [description, setDescription] = useState()
    const [userName, setUserName] = useState()

    const handleUserNameChange = (event) => {
        setUserName(event.target.value)
    }

    const handleDescriptionChange = (event) => {
        setDescription(event.target.value)
    }

    const onClick = () => {
        handleSubmit({userName, description })
    }

    return <Container>
        <Row>
            <Col>
                <Row>
                    <Col><Form.Control
                        id="userName" onChange={handleUserNameChange} required  placeholder="Seu nome aqui"/></Col>
                    <Col><Form.Control
                        id="description" onChange={handleDescriptionChange} required placeholder="O que está pensando?"/></Col>


                </Row></Col>
            <Col><Button variant="primary" onClick={onClick}>Send</Button></Col>
        </Row>
    </Container>
}