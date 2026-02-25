(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ y "44")))

(assert (str.in_re y (re.+ (re.union (str.to_re "0") (str.to_re "69")))))
(assert (str.in_re x (re.* (re.union (re.range "6" "9") (re.+ (re.+ (re.range "4" "7")))))))

(assert (< (+ (* (- 8) (str.len x)) (* 8 (str.len y)) (* (- 5) (str.to_int x)) (* (- 8) (str.to_int y))) 3))
(assert (>= (* 3 (str.len x)) 67))

(check-sat)