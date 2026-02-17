(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.union (str.to_re "163") (re.* (str.to_re "687")))))))

(assert (<= (* (- 7) (str.to_int x)) 50))
(assert (= (+ (* 9 (str.len x)) (str.to_int x)) 81))
(assert (<= (* (- 3) (str.to_int x)) 56))

(check-sat)