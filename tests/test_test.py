import pytest
from httpx import AsyncClient

from ikigai.main import app


@pytest.mark.anyio
async def test_test():
    async with AsyncClient(app=app, base_url='http://test') as ac:
        response = await ac.get('/')
    assert response.status_code == 200
    assert response.json() == {'Hello': 'world'}
