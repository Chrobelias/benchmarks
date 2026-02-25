(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.range "5" "8") (re.* (re.* (re.range "3" "7")))))))

(assert (<= (* (- 3) (str.to_int x)) 46))
(assert (> (+ (* 4 (str.len x)) (- (str.to_int x))) 47))

(check-sat)