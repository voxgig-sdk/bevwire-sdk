package core

type BevwireError struct {
	IsBevwireError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewBevwireError(code string, msg string, ctx *Context) *BevwireError {
	return &BevwireError{
		IsBevwireError: true,
		Sdk:              "Bevwire",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *BevwireError) Error() string {
	return e.Msg
}
