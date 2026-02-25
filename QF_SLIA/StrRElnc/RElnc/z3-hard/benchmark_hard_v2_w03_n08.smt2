(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "37" x) (str.++ y "57")))

(assert (str.in_re y (re.union (re.* (re.* (re.range "2" "7"))) (str.to_re "33"))))
(assert (str.in_re x (re.union (re.+ (re.* (re.range "3" "8"))) (str.to_re "924"))))

(assert (= (+ (* 10 (str.len y)) (* 7 (str.to_int y))) 25))
(assert (= (+ (* 2 (str.to_int x)) (* 3 (str.to_int y))) 26))

(check-sat)