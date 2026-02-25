(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.range "3" "7") (re.++ (re.range "5" "9") (re.* (re.range "0" "2")))))))

(assert (<= (* 8 (str.to_int x)) 24))
(assert (<= (* (- 3) (str.to_int x)) 72))
(assert (<= (+ (* (- 10) (str.len x)) (* 7 (str.to_int x))) 0))

(check-sat)