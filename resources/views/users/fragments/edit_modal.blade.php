<div class="modal fade" id="edit-modal"
     data-bs-backdrop="static" data-bs-keyboard="false"
     tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Edit user</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
            </div>

            <form action="{{ route("users.update",$user->id) }}" id="edit-form" method="POST" >
                @csrf
                @method('PATCH')
                <div class="modal-body">

                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 row-cols-xxl-3 g-1 g-sm-3">

                        <div class="mb-3">
                            <label for="oldSurname" class="form-label">Surename</label>
                            <input class="form-control" value="{{$user->surname}}" type="text" id="oldSurname" name="surname" required placeholder="Input surname">
                        </div>


                        <div class="mb-3">
                            <label for="oldName" class="form-label">Name</label>
                            <input class="form-control" value="{{$user->name}}" type="text" id="oldName" name="name" required placeholder="Name title">
                        </div>


                        <div class="mb-3">
                            <label for="oldPatronymic" class="form-label">Patronymic</label>
                            <input class="form-control" value="{{$user->patronymic}}" type="text" id="oldPatronymic" name="patronymic" placeholder="Input patronymic">
                        </div>


                    </div>

                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 row-cols-xxl-3 g-1 g-sm-3">

                        <div class="mb-3">
                            <label for="oldEmail" class="form-label">Email</label>
                            <input class="form-control"value="{{$user->email}}" type="email" id="oldEmail" name="email" required placeholder="email: example@email.com">
                        </div>


                        <div class="mb-3">
                            <label for="oldPhone" class="form-label">Phone</label>
                            <input class="form-control"value="{{$user->phone}}" type="text" id="oldPhone" name="phone" required placeholder="Phone number">
                        </div>

                    </div>

                    <div class="mb-3">
                        <label for="role" class="form-label">Role</label>
                        <select class="form-select" id="role" name="role" required>
                            @foreach($roles as $role)
                                <option value="{{ $role->id }}">{{ __($role->name) }}</option>
                            @endforeach
                        </select>
                    </div>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                </div>
            </form>

        </div>
    </div>
</div>
