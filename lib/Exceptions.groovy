// Helper class to centralize exception definitions
class ValidationException extends Exception {
    ValidationException(String message) { 
        super(message) 
    }
}

return [
    ValidationException: ValidationException
]
