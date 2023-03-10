font = loadFont("Verdana.ttf")

editor = contextWindow {
    name = "Paperwork Editor",
    position = { 50, 50, 600, 600 },
    noBackground = true,
    minimumSize = { 300, 300 },
    maximumSize = { 2048, 2048 },
    gravity = { 0, 1, 0, 1 },
    visible = true,
    components = {
        paper_editor {
            position = { 0, 0, 2048, 2048 },
        },
        push_button {
            position = { 32, 32, 122, 22 },
            visible = true,
            label = "Push Button",
        }
    }
}
