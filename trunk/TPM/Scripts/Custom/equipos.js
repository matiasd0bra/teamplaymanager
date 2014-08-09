function Jugador(nombre) {
    this.nombre = nombre;
}



function asignarjugador(self) {
    $.ajax({
        type: "GET",
        url: '@Url.Action("GetJugadorPorId", "Jugador")',
        data: self.id,
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            Success = true;//doesnt goes here
        },
        error: function (textStatus, errorThrown) {
            Success = false;//doesnt goes here
        }

    });
}