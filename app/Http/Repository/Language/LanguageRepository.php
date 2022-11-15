<?php

namespace App\Http\Repository\Language;

use App\Models\Settings\CmnLanguage;
use App\Models\Settings\CmnTranslation;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Session;

class LanguageRepository
{

    public function setLangaugeSession($langId){
        $leng = CmnLanguage::where('id', $langId)->select('id','rtl','code')->first();
        Session::put("lang", $leng);
        Cache::put('codLang',$leng->code == 'Mx' ? 'es' : $leng->lang_key, now()->addDays(15));
        $trans = CmnTranslation::select('lang_key', 'lang_value','cmn_language_id')->get();
        $langArr=[];
        foreach ($trans as $val) {
            $langArr[$val->lang_key.'_'.$val->cmn_language_id]= $val->lang_value;
        }
        Cache::put("langTranslate", $langArr, now()->addDays(15));

    }
    
    public function getLanguage()
    {
        $data = CmnLanguage::select('id', 'name')->get();
        return $data;
    }
}
