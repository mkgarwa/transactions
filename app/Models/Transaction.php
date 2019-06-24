<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Transactions extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'amount', 'currency', 'balance'
    ];

    /**
     * transaction belongs to a user relatoinship
     */
    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
}
