(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "57" y)))

(assert (str.in_re x (re.++ (re.union (re.+ (str.to_re "44")) (re.+ (re.range "1" "7"))) (str.to_re "5"))))
(assert (str.in_re y (re.union (re.union (re.+ (str.to_re "77")) (str.to_re "25")) (str.to_re "59"))))

(assert (< (+ (* 7 (str.to_int x)) (* 2 (str.to_int y))) 9))
(assert (> (+ (* 8 (str.len x)) (* 7 (str.len y))) 98))

(check-sat)