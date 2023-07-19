class ApiCode
{
    success( data ,message) {
        return ({"message":message, "data":data});
    }

    error(err, message) {
        return ({"err":err, "message":message})
    }
}

module.exports = ApiCode