// Define exception classes in package-style format
class ValidationException extends Exception {
    ValidationException(String message) { 
        super(message) 
    }
}

// Explicitly return the class definition
return ValidationException
