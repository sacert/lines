var defaults = {
        theme: 'bubble',
        modules: {
            toolbar: [
                [{ 'header': [1, 2, 3, false] }],
                [{ 'color': [] }, { 'background': [] }],
                ['bold', 'italic', 'underline', 'strike'],
                ['blockquote', 'code-block'],
                [{ 'list': 'ordered'}, { 'list': 'bullet' }],
                [{ 'indent': '-1'}, { 'indent': '+1' }],
                ['blockquote', 'code-block'],
                ['image', 'video'],
                ['clean']
            ]
        },
        placeholder: 'Compose your story...',
    };

//This is the global config object
Quilljs.setDefaults(defaults)
