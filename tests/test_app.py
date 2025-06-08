import app.main

def test_example():
    assert 1 == 1


def test_index_route():
    app = app.main.app.test_client()
    response = app.get('/')
    assert response.status_code == 200
    assert b"Hello from raman-micro!" in response.data
