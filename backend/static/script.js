function fetchData() {
    fetch('/data')
        .then(response => response.json())
        .then(data => {
            document.getElementById('air_quality_level').textContent = data.air_quality_level;
            document.getElementById('air_quality_desc').textContent = data.air_quality_desc;
            document.getElementById('air_humidity_level').textContent = data.air_humidity_level;
            document.getElementById('air_humidity_desc').textContent = data.air_humidity_desc;
        })
        .catch(error => console.error('Error fetching data:', error));
}

// Fetch data every x (in ms) second
setInterval(fetchData, 100);
