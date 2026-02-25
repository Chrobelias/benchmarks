(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.range "2" "8") (re.union (str.to_re "95") (re.union (str.to_re "16") (re.* (str.to_re "542")))))))
(assert (str.in_re x (re.* (re.union (str.to_re "790") (re.+ (re.* (str.to_re "980")))))))

(assert (= (+ (* 8 (str.len x)) (* (- 8) (str.len y)) (* 9 (str.to_int y))) 62))

(check-sat)