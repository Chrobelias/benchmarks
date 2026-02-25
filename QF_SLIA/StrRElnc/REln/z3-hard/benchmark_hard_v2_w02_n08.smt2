(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.* (re.* (re.range "4" "7"))) (re.* (re.range "7" "9")))))
(assert (str.in_re y (re.++ (str.to_re "140") (re.union (str.to_re "253") (re.union (re.range "0" "4") (re.* (re.range "7" "9")))))))

(assert (< (+ (* 3 (str.to_int x)) (* 8 (str.to_int y))) 34))
(assert (<= (+ (* (- 6) (str.len x)) (* 5 (str.len y))) 68))

(check-sat)