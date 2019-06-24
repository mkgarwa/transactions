<?php
namespace App\Http\Controllers\API;

use App\Models\Transactions;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    protected $successStatus = 200;

    /**
     * Show all the transactions of login user
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $transactions = Transactions::where('user_id', '=', Auth::user()->id)->paginate(15);

//        foreach ($transactions as &$key) {
//            $key->localCurrency = $this->_convertCurrency($key->amount, $key->currency, 'INR');
//        }
        return $transactions;
    }

    /**
     * Get individual transaction based on transaction ID
     * @param $id
     * @return mixed
     */
    public function getIndividualTransaction($id) {
        return Transactions::findOrFail($id);
    }

    /**
     * Search or filter transaction based on start date or/and end date
     */
    public function searchTransaction() {
        if(count($_REQUEST))
            $data = $_REQUEST;

        $startDate = $data['startDate'] ?? '';
        $endDate = $data['endDate'] ?? '';

        $transactions = Transactions::whereDate('created_at', '>=', $startDate)
            ->whereDate('created_at', '<=', $endDate)
            ->paginate(15);

//        foreach ($transactions as &$key) {
//            $key->localCurrency = $this->_convertCurrency($key->amount, $key->currency, 'INR');
//        }
        return $transactions;
    }
}