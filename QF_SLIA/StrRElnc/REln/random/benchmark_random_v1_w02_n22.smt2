(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "508") (re.* (re.++ (str.to_re "154") (str.to_re "30"))))))

(assert (<= (+ (* 5 (str.len x)) (- (str.to_int x))) 27))

(check-sat)