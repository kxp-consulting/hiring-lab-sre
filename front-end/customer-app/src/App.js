import { useEffect, useState } from "react";
import { Col, Container, Row, Spinner } from "react-bootstrap";
import Post from "./post";
import PostCreate from "./post-create";

function App() {

  const API_URL = process.env.REACT_APP_API_URI
  const [postList, setPostList] = useState(null)
  const [isLoading, setIsLoading] = useState(true)
  const [hasUpdated, setHasUpdated] = useState(false)

  useEffect(() => {
    fetch(API_URL).then(async (result) => {

      const resultAsJson = await result.json()
      setPostList(resultAsJson)
      setIsLoading(false)
    })

  }, [hasUpdated])

  const handleSubmit = (values) => {
    setIsLoading(true)

    fetch(API_URL, {
      body: JSON.stringify(values), method: "POST", headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      }
    }).then(async (result) => {
      setHasUpdated(!hasUpdated)

      setIsLoading(false)
    })
  }

  return (
    <Container>
      <Row><h1 className="header" >Fake Twitter</h1></Row>
      <Row>
        <PostCreate handleSubmit={handleSubmit}></PostCreate>
      </Row>
      <Row className="w-50">
        <Col className="mt-2">
          {isLoading && <Spinner animation="border" />}
          {!isLoading && postList.map(post => <Post key={post.id} post={post} />)}
        </Col>
      </Row>

    </Container>
  );
}

export default App;
