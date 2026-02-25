(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "524") (re.++ (re.+ (str.to_re "937")) (str.to_re "863"))))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "292") (re.union (re.* (str.to_re "697")) (str.to_re "772"))) (str.to_re "236"))))

(assert (> (* 5 (str.len x)) 27))
(assert (>= (+ (* 10 (str.to_int x)) (str.to_int y)) 81))

(check-sat)