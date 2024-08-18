<?php

namespace App\Casts;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Database\Eloquent\CastsAttributes;

class StatusIconCast implements CastsAttributes
{
    /**
     * Cast the given value.
     *
     * @param  array<string, mixed>  $attributes
     */
    public function get(Model $model, string $key, mixed $value, array $attributes): mixed
    {
        $active = '<span style="background-color: #04AA6D;color: white;padding: 3px;width:100px;">Active</span>';
        $inActive = '<span style="background-color: #ff9800;color: white;padding: 3px;width:100px;">In Active</span>';
        $delete = '<span style="background-color: #ff0000;color: white;padding: 3px;width:100px;">Deleted</span>';

        $value = $attributes['status'];
        $deletedAt = $attributes['deleted_at'];

        if ($deletedAt == null) {

            return $value == 1 ? $active : $inActive;
        } else {
            return $value = $delete;
        }
    }

    /**
     * Prepare the given value for storage.
     *
     * @param  array<string, mixed>  $attributes
     */
    public function set(Model $model, string $key, mixed $value, array $attributes): mixed
    {
        return $value;
    }
}
