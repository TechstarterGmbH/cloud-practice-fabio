import React, {useState} from 'react';

function NachrichtUpdate() {

    const [nachricht, setNachricht] = useState('');

    function handleUpdate(e) {
        e.preventDefault();
        console.log('Update Nachricht: ', nachricht);
    }

    return (
        <div className="NachrichtUpdate">
            <h2>Update Nachricht</h2>
            
            <input type="text" value={nachricht} onChange={e => setNachricht(e.target.value)} />
            <button onClick={handleUpdate}>Update</button>
        </div>
    );
}

export default NachrichtUpdate;
