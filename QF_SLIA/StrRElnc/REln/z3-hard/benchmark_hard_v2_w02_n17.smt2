(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (str.to_re "22") (re.++ (str.to_re "67") (re.* (re.range "5" "7"))))))
(assert (str.in_re x (re.+ (re.* (re.* (re.* (str.to_re "8")))))))

(assert (= (+ (* 5 (str.to_int x)) (* (- 3) (str.to_int y))) 97))
(assert (= (+ (* (- 9) (str.len x)) (* 6 (str.len y))) 36))

(check-sat)