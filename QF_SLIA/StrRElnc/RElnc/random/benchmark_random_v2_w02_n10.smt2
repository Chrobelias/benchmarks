(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "57")))

(assert (str.in_re y (re.union (str.to_re "24") (re.* (re.+ (re.+ (str.to_re "259")))))))
(assert (str.in_re x (re.union (re.+ (re.++ (re.* (re.range "3" "7")) (re.range "2" "7"))) (str.to_re "209"))))

(assert (= (+ (* (- 10) (str.len x)) (* (- 8) (str.len y))) 12))
(assert (< (+ (* 6 (str.to_int x)) (* 4 (str.to_int y))) 0))

(check-sat)