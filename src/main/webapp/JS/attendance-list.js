document.addEventListener('DOMContentLoaded', () => {
    const attendanceRecords = [
        { id: 1, course: 'Math', date: '2024-01-15', status: 'Marked' },
        { id: 2, course: 'Science', date: '2024-01-16', status: 'Pending' }
    ];

    const attendanceList = document.getElementById('attendance-list');
    attendanceRecords.forEach(record => {
        const div = document.createElement('div');
        div.className = 'attendance-record';
        div.innerHTML = `
            <h3>${record.course} - ${record.date}</h3>
            <p>Status: ${record.status}</p>
            <button onclick="viewDetails(${record.id})">View Details</button>
        `;
        attendanceList.appendChild(div);
    });
});

function viewDetails(id) {
    window.location.href = `/attendance/${id}`;
}
